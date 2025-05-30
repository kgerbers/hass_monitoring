## Glances Monitoring installatie

Deze setup installeert Glances in een Python virtual environment en configureert een systemd service voor de web UI.

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
