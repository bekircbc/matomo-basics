# matamo-basics

## Using matomo on local

- Copy the file named docker-compose.yml.
- Replace placeholders like your_mysql_root_password, matomo_user, and matomo_password with your desired values.
- Open a terminal
- Navigate to the directory containing the docker-compose.yml file
- Run docker-compose up -d to start the services.

## Add Matomo Tracking Code

          <!-- Matomo -->
            <script type="text/javascript">
            var _paq = window._paq = window._paq || [];
            _paq.push(['trackPageView']);
            _paq.push(['enableLinkTracking']);
              (function() {
              var u="//{$MATOMO_URL}/";
              _paq.push(['setTrackerUrl', u+'matomo.php']);
              _paq.push(['setSiteId', {$IDSITE}]);
              var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
              g.type='text/javascript'; g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
              })();
            </script>
          <!-- End Matomo Code -->

## Integrating Matomo

- [Integrating Matomo Javascript](https://developer.matomo.org/guides/tracking-javascript-guide)

## Read More

- [Matomo Home Page](https://matomo.org/)

- [Matomo Integration](https://developer.matomo.org/integration)
