# congresso.coffee
congresso.coffee is an application built with [Electron](https://electron.atom.io) and [React](https://facebook.github.io/react), aiming to provide detailed information about documents and politicians on the Brazilian Congress.

Most of the scripts are written in [CoffeeScript](https://coffeescript.org).

### Building
To build the app, you'll need `node` and `npm` installed on your computed. Then, use:

`npm install`

to install the required dependencies.


### Code Structure
- **app**: contains the code that powers congresso.coffee
 - **main**: code that powers Main process
 - **renderer**: code that powers the Renderer process

Please read [Electron Quick Start](https://github.com/electron/electron/blob/master/docs/tutorial/quick-start.md#quick-start) to have an understanding of what are the Main and Renderer processes.
