{app, BrowserWindow} = require 'electron'

mainWindow = null
app.on 'ready', ->
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600
  })

  mainWindow.loadURL "file://#{__dirname}../renderer/index.html"
  mainWindow.webContents.openDevTools()

  mainWindow.on 'closed', ->
    mainWindow = null

app.on 'window-all-closed', ->
  if process.platform isnt 'darwin' then app.quit()
