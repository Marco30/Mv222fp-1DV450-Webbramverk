***om API är ner meddela mig här eller i marco.villegas@live.se, kör en API på cloud9 och den stängs av efter ett dygn av ina aktvitet***

**API/Klient**

La till att Id ska skickas med för data som begärs för att kunna använda id för att länka till en specifik resurs. vid varje anrop kontrolleras att API nyckel har skickats med, det gäller allttid, inte bara vid de anrop där man inte behöver var inloggad. API har CORS för att kunna göra requests från klient, Hade ett fel som inte gjorde att man kunde få ut alla platser, trodde först det var ett api fel som jag ägnade tid åt att försöka fixa men det visade sig att det var ett fel i klienten. Användares id returneras när man logar in och då får en JSON web token från api. En användares id sparas i rootScope, för att sen kunna användas till anrop mot api så att den inloggade användarens platser visas. I klientapplikationen får man en lista på alla platser tillhörande en tag, alla användare som finns samt lista på alla platser totalt. Om man vill uppdaterar sina egna platser, lägga till eller ta bort plats så måste man vara inloggad. 


Klient:  http://paradiseblue.nu/

**Användare**

email: marco@live.se

lösen: marco123

Happy coding!

Marco villegas
