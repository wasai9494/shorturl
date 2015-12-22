<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=egde">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            goslash
        </title>
        <link rel="shortcut icon" href="public/img/goslash.png">
        <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="/bootstrap/dist/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="/css/style.less">
    </head>
    
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar" class="navbar-toggle collapsed">
                        <span class="sr-only">
                            Toggle navigation
                        </span>
                        <span class="icon-bar">
                        </span>
                        <span class="icon-bar">
                        </span>
                        <span class="icon-bar">
                        </span>
                    </button>
                    <a href="/goslash" class="navbar-brand">
                    </a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="/#current-links">
                                Links
                            </a>
                        </li>
                        <li>
                            <a href="/#add-link">
                                Add Link
                            </a>
                        </li>
                        <li>
                            <a href="https://github.com/wasai9494/shorturl" target="_blank">
                                Contribute
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container content">
            <a id="add-link" class="anchor">
            </a>
            <form action="/" method="post">
                <h2>
                    Add Shortlink
                </h2>
                <div class="input-group input-group-lg">
                    <span id="input-addon-shortlink" class="input-group-addon">
                        go/
                    </span>
                    <input type="text" name="slug" placeholder="shortlink" required pattern="\w+"
                    minlength="2" maxlength="20" aria-describedby="input-addon-shortlink" class="form-control">
                </div>
                <p>
                    Redirects to:
                </p>
                <div class="input-group input-group-lg">
                    <input type="url" name="url" placeholder="http://www.example.com/" required
                    class="form-control">
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary">
                            Create
                        </button>
                    </span>
                </div>
            </form>
        </div>
        <div class="container">
            <hr>
        </div>
        <div class="container content">
            <a id="current-links" class="anchor">
            </a>
            <h2>
                Current Shortlinks
            </h2>
            <table class="table current-links-table">
                <thead>
                    <tr>
                        <th class="shortlink">
                            Shortlink
                        </th>
                        <th class="redirects-to">
                            Redirects To
                        </th>
                        <th class="actions">
                            Actions
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="shortlink">
                            <a href="/jira">
                                jira
                            </a>
                        </td>
                        <td class="redirects-to">
                            <a href="http://jira.babeltime.com">
                                http://jira.babeltime.com
                            </a>
                        </td>
                        <td class="actions">
                            <a href="/jira/stats" class="btn btn-xs btn-default">
                                <span class="glyphicon glyphicon-stats">
                                </span>
                                Stats
                            </a>
                            <a href="/jira/edit" class="btn btn-xs btn-default">
                                <span class="glyphicon glyphicon-edit">
                                </span>
                                Edit
                            </a>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
        <script src="/jquery/dist/jquery.min.js">
        </script>
        <script src="/bootstrap/dist/js/bootstrap.min.js">
        </script>
        <script src="/js/goslash.js">
        </script>
    </body>

</html>