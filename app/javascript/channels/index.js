// Import all the channels to be used by Action Cable
import "./backlog_items_channel"

// Automatically require all files in the channels directory that end with _channel.js
const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)
