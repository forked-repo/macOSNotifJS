<!--
*  macOSNotifJS: A simple Javascript plugin to create simulated macOS notifications on your website.
*  <https://github.com/MattIPv4/macOSNotifJS/>
*  Copyright (C) 2018 Matt Cowley (MattIPv4) (me@mattcowley.co.uk)
*
*  This program is free software: you can redistribute it and/or modify
*   it under the terms of the GNU Affero General Public License as published
*   by the Free Software Foundation, either version 3 of the License, or
*   (at your option) any later version.
*  This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*  You should have received a copy of the GNU Affero General Public License
*   along with this program. If not, please see
*   <https://github.com/MattIPv4/macOSNotifJS/blob/master/LICENSE> or <http://www.gnu.org/licenses/>.
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="<%= htmlWebpackPlugin.options.meta.viewport %>"/>
    <title>macOSNotifJS</title>
    <style>
        html, body {
            margin: 0;
            background: #fff;
            color: #000
        }

        html {
            padding: 0;
        }

        body {
            padding: 3em 5em;
        }

        h1, h2 {
            margin: 1rem -5rem 0;
            padding: .5rem 2.5rem;
            background: #f2f2f2;
            box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            font-weight: 300;
            color: #444;
            text-align: center;
            font-family: SF Display, -apple-system, system-ui, BlinkMacSystemFont, HelveticaNeue-Light, Helvetica Neue Light, Helvetica Neue, Helvetica, Segoe UI, Roboto, Ubuntu, Lucida Grande, sans-serif;
            line-height: 1;
        }

        h1 small {
            font-weight: inherit;
            font-size: 50%;
        }

        h2 {
            font-size: 1.6em;
            text-align: left;
        }

        h2 small {
            font-weight: inherit;
            font-size: 70%;
        }

        code, pre {
            color: rgb(255, 59, 48);
        }

        button {
            background: rgb(0, 122, 255);
            border: none;
            border-radius: 10px;
            font-weight: normal;
            color: #fff;
            font-size: 1.2em;
            line-height: 1.5em;
            margin-bottom: 0.5em;
        }

        button:hover {
            background: rgb(0, 111, 230);
        }

        button:active {
            background: rgb(0, 99, 204);
        }

        button + code {
            margin-left: 0.5em;
        }
    </style>

<% for (var css in htmlWebpackPlugin.files.css) { %>
    <link href="<%= htmlWebpackPlugin.files.css[css] %>" rel="stylesheet"/>
<% } %>
</head>
<body class="sf-ui-display">
<a href="https://github.com/MattIPv4/macOSNotifJS">
    <img style="position:absolute;top:0;left:0;border:0" alt="Fork me on GitHub"
         src="https://s3.amazonaws.com/github/ribbons/forkme_left_darkblue_121621.png"/>
</a>

<h1>
    macOSNotifJS
    <br/>
    <small>
        A simple Javascript plugin to create simulated macOS notifications on your website.
        <br/>macOSNotifJS is a plugin created by <a href="https://mattcowley.co.uk/" target="_blank">Matt Cowley</a>.
    </small>
</h1>

<h3>Usage:</h3>
<p>
    To get started call the function <code>macOSNotif</code>.
    <br/>To make proper use of the fucntion, you can supply an object of options as listed below.
</p>
<pre>
options = {
    delay: .5,                              // Delay before display (in seconds)
    autoDismiss: 0,                         // Delay till automatic dismiss (0 = Never, in seconds)
    interactDismiss: true,                  // Toggle swipe/drag to dismiss
    sounds: false,                          // Play sounds for notification
    zIndex: 5000,                           // The css z-index value of the notification
    imageSrc: null,                         // Link of the icon to display (null to hide icon)
    imageName: "",                          // Alt/Title text of the icon
    imageLink: null,                        // Link for icon click (null for no link, '#' for dismiss)
    title: "macOSNotifJS",                  // Main Notif Title
    subtitle: "Default notification text",  // Main Notif Sub Title
    mainLink: null,                         // Link for the main text body (null for no link, '#' for dismiss)
    btn1Text: "Close",                      // Text for Button 1 (null to hide all buttons)
    btn1Link: null,                         // Link for Button 1 (null or '#' for dismiss only)
    btn2Text: "Go",                         // Text for Button 2 (null to hide second button)
    btn2Link: null,                         // Link for Button 2 (null or '#' for dismiss only)
}
</pre>

<% for (var chunk in htmlWebpackPlugin.files.chunks) { %>
<script src="<%= htmlWebpackPlugin.files.chunks[chunk].entry %>"></script>
<% } %>

<h3>Demos:</h3>
<button data-demo-load onclick="macOSNotif({subtitle:'Dual button notification'})">
    Dual button notification
</button>
<code>macOSNotif()</code><br/>

<button data-demo-load onclick="macOSNotif({subtitle:'Single button notification', btn2Text:null})">
    Single button notification
</button>
<code>macOSNotif({btn2Text:null})</code><br/>

<button data-demo-load onclick="macOSNotif({subtitle:'Main body link notification', mainLink:'#'})">
    Main body link notification
</button>
<code>macOSNotif({mainLink:'#'})</code><br/>

<button data-demo-load onclick="macOSNotif({subtitle:'No button notification', mainLink:'#', btn1Text:null})">
    No button notification
</button>
<code>macOSNotif({mainLink:'#', btn1Text:null})</code><br/>

<button data-demo-load
        onclick="macOSNotif({subtitle:'Image (icon) notification', imageSrc: 'https://mattcowley.co.uk/me.png'})">
    Image (icon) notification
</button>
<code>macOSNotif({imageSrc: 'https://mattcowley.co.uk/me.png'})</code><br/>

<button onclick="macOSNotif({subtitle:'Sound (alert) notification', sounds:true})">
    Sound (alert) notification
</button>
<code>macOSNotif({sounds:true})</code><br/>

<h2>
    macOSNotifJS
    <br/>
    <small>
        A simple Javascript plugin to create simulated macOS notifications on your website.
        <br/>macOSNotifJS is a plugin created by <a href="https://mattcowley.co.uk/" target="_blank">Matt Cowley</a>.
    </small>
</h2>

<script>
    if(window.location.hostname != "macosnotif.js.org") window.location.replace("https://macosnotif.js.org");

    const buttons = document.querySelectorAll("button[data-demo-load]");
    const delay = 750;

    function click(i) {
        if (i < buttons.length) {
            buttons[i].click();
            i++;
            setTimeout(function () {
                click(i);
            }, delay);
        }
    }

    click(0);
</script>

</body>
</html>
