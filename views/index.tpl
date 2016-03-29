<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <title>Hipster Domain Finder - Real word domain hacks</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="/static/normalize.css">
    <link rel="stylesheet" href="/static/skeleton.css">
    <link rel="stylesheet" href="/static/index.css">
    <link rel="icon" type="image/png" href="/static/logo.png">
</head>
<body>
    <div class="wrap">
        <header>
            <img src="/static/logo.png" class="logo" width="376.5" height="279">
            <div class="subtitle">
                Dot-com is so mainstream, find real word domain hacks with Hipster Domain Finder.
                <a href="https://github.com/djh-/hipster-domain-finder">Read more on GitHub</a>.
            </div>
        </header>

        <main class="container">
            % i = 0
            % for d in domains:
                % if i % 2 == 0:
                    <div class="row">
                % end
                        <a target="_blank" href="/register/{{d}}" class="domain six columns" data-opened="false">{{d}}</a>
                % if i % 2 != 0:
                    </div>
                % end
                % i += 1
            % end
        </main> 

        <nav>
            <a href="/{{page + 1}}" class="side">Next</a>

            % if page > 1:
                <a href="/{{page - 1}}" class="side">Previous</a>
            % end
        </nav>
<!-- 
        <section class="mailing">
            Receive a Hipster Domain in your inbox every Monday.
            <form method='get' action='http://mailing.bram.gg/join/hdf'>
                <input type="email" name="email" placeholder="you@example.com">
                <br>
                <input type="submit" value="Yes please!">
            </form>
        </section>

 -->        <section class="purchased">
            {{len(purchased)}} Hipster Domains purchased this week.
            <br>
            {{', '.join(purchased)}}
        </section>

        <footer>
            Uses <a href="https://domainr.com/">Domainr</a> to check domain availability.
            <br>
            The logo was made with  <a href="http://hipsterlogogenerator.com/">Hipster Logo Generator</a>.
            <br><br>
            Made by <a href="http://www.bram.gg/">Bram Hoskin</a> in Portland.
            <br>
            Rehosted and rebranded by <a href="http://daniel.fail">Daniel Haaser</a>.
            
        </footer>
    </div>
</body>
</html>
