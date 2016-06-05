{app, BrowserWindow} = require 'electron'

mainWindow = null
app.on 'ready', ->
  mainWindow = new BrowserWindow({
    show: false,
    width: 800,
    height: 600
  })

  mainWindow.loadURL "file://#{__dirname}/../renderer/index.html"
  BrowserWindow.addDevToolsExtension "#{__dirname}/../../react-devtools"
  mainWindow.webContents.openDevTools()

  mainWindow.on 'closed', ->
    mainWindow = null

  mainWindow.webContents.on 'did-finish-load', ->
    mainWindow.show()
    mainWindow.focus()

app.on 'window-all-closed', ->
  if process.platform isnt 'darwin' then app.quit()
