API/Klient
La till att Id ska skickas med f�r data som beg�rs f�r att kunna anv�nda id f�r att l�nka till en specifik resurs. vid varje anrop kontrolleras att API nyckel har skickats med, det g�ller allttid, inte bara vid de anrop d�r man inte beh�ver var inloggad. API har CORS f�r att kunna g�ra requests fr�n klient, Hade ett fel som inte gjorde att man kunde f� ut alla platser, trodde f�rst det var ett api fel som jag �gnade tid �t att f�rs�ka fixa men det visade sig att det var ett fel i klienten. Anv�ndares id returneras n�r man logar in och d� f�r en JSON web token fr�n api. En anv�ndares id sparas i rootScope, f�r att sen kunna anv�ndas till anrop mot api s� att den inloggade anv�ndarens platser visas. I klientapplikationen f�r man en lista p� alla platser tillh�rande en tag, alla anv�ndare som finns samt lista p� alla platser totalt. Om man vill uppdaterar sina egna platser, l�gga till eller ta bort plats s� m�ste man vara inloggad. 


Klient:  http://paradiseblue.nu/
email: marco@live.se
l�sen: marco123

Happy coding!
Marco villegas