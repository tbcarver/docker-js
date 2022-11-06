# docker-js
## How to debug node with docker and vscode

Using **--inspect-brk** was necessary to hit any breakpoints, when debugging an app that is not a server waiting for commands.
```
"dockerRun": {
  "command": "node --inspect-brk=0.0.0.0:9229 .",
  "env": {
    "DEBUG": "*",
    "NODE_ENV": "development"
  }
},
"node": {
  "enableDebugging": true
}
```