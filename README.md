## Glances Monitoring installatie

Deze setup installeert Glances in een Python virtual environment en configureert een systemd service voor de web UI.

install.sh pas gemaakt na integratie in bestaande Raspberry PI, dus nog niet helemaal getest :)
config is wel getest

### Installatie

1. Clone deze repo.
2. Pas eventueel de `install.sh` aan indien je een andere gebruiker wilt gebruiken.
3. Voer het installatiescript uit (optioneel met gebruikersnaam):

   ```bash
   ./install.sh [gebruikersnaam]
   ```

4. Controleer status van de service:

   ```bash
   sudo systemctl status glances
   ```

5. Toegang tot Glances Web UI via:

   ```
   http://<ip-van-apparaat>:61208
   ```

# Glances integreren in Home Assistant

Home Assistant ondersteunt een Glances integratie via de GUI:

1. Ga in Home Assistant naar **Instellingen** > **Apparaten en Diensten** > **Integraties**.

2. Klik op **Integratie toevoegen** en zoek naar **Glances**.

3. Vul het IP-adres of hostname in van de machine waarop Glances draait, en poort `61208`.

4. Sla op en de sensoren verschijnen automatisch in Home Assistant.

## Tips

- Glances draait standaard op poort 61208.
- Zorg dat de firewall of router poort 61208 openzet voor interne toegang.
- Voor extra veiligheid kan je een reverse proxy of VPN gebruiken.

https://www.home-assistant.io/integrations/glances/ 

---


