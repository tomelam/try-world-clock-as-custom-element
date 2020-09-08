# Installation of Dojo widgets built as custom elements

I haven't got this procedure to work. I am abandoing this project for now.

## Trial using Dojo example widgets

Follow https://dojo.io/learn/custom-elements/introduction
to learn how to compile Dojo widgets as custom elements.
Try to make the procedure work using the Dojo example widgets from
https://github.com/dojo/examples .

1. Clone the Dojo widget examples:
`git clone https://github.com/dojo/examples`

2. Edit the .dojorc in the widget's or app's directory.

3. Make the scripts executable:
`chmod +x build* check*`

4. Test your setup:
`./check-cli-tools.sh`

5. Build an app or widget:
`./build-todo-mvc` or
`./build-world-clock.sh`

