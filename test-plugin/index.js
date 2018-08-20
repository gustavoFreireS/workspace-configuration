exports.decorateConfig = (config) => {
    return Object.assign({}, config, {
        css: `
            ${config.css || ''}
            .button-screen {
                background-color: transparent;
                width: 100px;
                height: 30px;
                position: absolute;
                bottom: 0px;
                left: 0;
                z-index: 6;
                border: 1px solid transparent;
                color: transparent;
            }
            .button-screen:hover{
                border-color: #fff;
                color: #fff;
                transition ease-in-out 0.5s;
            }
            .button-screen:focus{
                outline: none;
            }
            .webView{
                z-index: 5;
                position: absolute;
                top: 0;
                bottom: 0;
                display: none;
            }
        `
    });
};
// exports.decorateTerm = (Term, { React }) => {
//     return class extends React.Component {
//         render() {
//             const { customChildren } = this.props
//             const existingChildren = customChildren ? customChildren instanceof Array ? customChildren : [customChildren] : [];
//             return (
//                 React.createElement(Term, Object.assign({}, this.props, {
//                     customInnerChildren: existingChildren.concat(React.createElement('iframe', { className: 'test', src:"http://localhost:8080" }))
//                 }
//             )
//         )
//     ) 
//         }
//     }
// }
exports.decorateTerm = (Term, { React, notify }) => {

    // this library calls require('react') internally
  
    return class extends React.Component {
        constructor(props) {
            super(props);
            this.onClick = this.onClick.bind(this);
            this.state = {
                height: '0px',
                width: '0px',
                display: 'none',
                buttonText: 'Show Screen',
                buttonState: 0
            }
          }
        onClick() {
           if(this.state.buttonState == 0){
            this.setState({
                height: '100%',
                width: '100%',
                display: 'block',
                buttonText: 'Hide Screen',
                buttonState: 1
            })
            
        }
            else{
                this.setState({
                    height: '0',
                    width: '0',
                    display: 'none',
                    buttonText: 'Show Screen',
                    buttonState: 0
                })
            }
        }
      render () {
        const children = [];
        var button = React.createElement('button', {onClick: () => this.onClick(), className: 'button-screen'}, 'show Screen');
        var iframe = React.createElement('iframe', {style:{width: this.state.width, height: this.state.height, display: this.state.display}, className: 'webView', src:'http://localhost:8080'});
        children.push(React.createElement(Term, Object.assign({}, this.props, { key: 'key1' })));
        children.push(button);
        children.push(iframe);
        return React.createElement('div', {style: {width: '100%', height: '100%', position: 'relative'}}, children);
      }
    }
  };