**om du vill testa klieten som är live på http://paradiseblue.nu/ och API är ner meddela mig här eller på marco.villegas@live.se så får jag upp den ingen, kör APIen på cloud9 och den stängs av efter ett dygn av inaktivitet**

**vill du sätta upp allt själv så är det bara att kopierar alla filer till cloud 9 och sen ändra hårkodade länkar till apien som då också borde körs på cloud 9**

Ändra, URL och APikey i  LoginService.js, Tagdirective.js, app.js , till din cloud9 server URL och APikey som då genererats i API du satt upp. Mer information hur du sätter upp APIen i clodu9 hittar du i API readme 

https://github.com/Marco30/Mv222fp-1DV450-Webbramverk/tree/master/Labb%202%20-%20API


**API/Klient**

La till att Id ska skickas med för data som begärs för att kunna använda id för att länka till en specifik resurs. vid varje anrop kontrolleras att API nyckel har skickats med, det gäller allttid, inte bara vid de anrop där man inte behöver var inloggad. API har CORS för att kunna göra requests från klient, Hade ett fel som inte gjorde att man kunde få ut alla platser, trodde först det var ett api fel som jag ägnade tid åt att försöka fixa men det visade sig att det var ett fel i klienten. Användares id returneras när man logar in och då får en JSON web token från api. En användares id sparas i rootScope, för att sen kunna användas till anrop mot api så att den inloggade användarens platser visas. I klientapplikationen får man en lista på alla platser tillhörande en tag, alla användare som finns samt lista på alla platser totalt. Om man vill uppdaterar sina egna platser, lägga till eller ta bort plats så måste man vara inloggad. 


Klient:  http://paradiseblue.nu/

**Användare**

email: marco@live.se

lösen: marco123

Happy coding!

Marco villegas
