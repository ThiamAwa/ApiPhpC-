using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using WPFModernVerticalMenu.Pages;
using WPFModernVerticalMenu.Model;

namespace WPFModernVerticalMenu.Service
{
    public class PersonneService
    {
        private readonly string baseUrl;

        public PersonneService()
        {
            baseUrl = System.Configuration.ConfigurationSettings.AppSettings["linkServeur"];
        }
        public async Task<List<Personne>> GetListUtilisateursAsync()
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseUrl);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                var response = await client.GetAsync("list.php");
                if (response.IsSuccessStatusCode)
                {
                    var responseData = await response.Content.ReadAsStringAsync();
                    return JsonConvert.DeserializeObject<List<Personne>>(responseData);
                }
                return new List<Personne>();
            }
        }
        public bool AddUtilisateurAsync(Personne personne)
        {
            var values = new Dictionary<string, string>
            {
                { "nom", personne.Nom },
                { "prenom", personne.Prenom },
                { "age", personne.Age.ToString() }
            };
            var content = new FormUrlEncodedContent(values);

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseUrl);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                var response = client.PostAsync("Create.php", content).Result;
                return response.IsSuccessStatusCode;
            }
        }

        public async Task<bool> DeleteUtilisateurAsync(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseUrl);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                var response = await client.DeleteAsync($"delete.php?id={id}");
                return response.IsSuccessStatusCode;
            }
        }

        public async Task<bool> UpdateUtilisateurAsync(Personne personne)
        {
            var values = new Dictionary<string, string>
            {
                { "id", personne.Id.ToString() },
                { "nom", personne.Nom },
                { "prenom", personne.Prenom },
                { "age", personne.Age.ToString() }
            };
            var content = new FormUrlEncodedContent(values);

            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseUrl);
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                var response = await client.PostAsync($"Update.php/{personne.Id}", content);
                return response.IsSuccessStatusCode;
            }
        }
    }


}
