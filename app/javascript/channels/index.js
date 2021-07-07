// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

window.onload = function() {
    const spinner = document.getElementById('loading');
    spinner.classList.add('loaded');
}
