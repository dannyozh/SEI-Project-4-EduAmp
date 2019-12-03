import React from 'react';
import './style.scss';
import classnames from 'classnames';
import Container from '@material-ui/core/Container';

// const cx = classnames.bind(styles)
class Landing extends React.Component {
    constructor() {
        super();
        console.log("in constructor");
        this.state = {
        }
    }



    render() {
        // const display = cx(
        //     styles.myclass, // styles that never change
        //     { // dynamic styles
        //         [styles.clicked]: this.state.clicked // make the key the style name, and the value the dynamic boolean
        //     }
        // )
        return (
            <Container>
                <body className="body">
                    <div>
                        <p>EduAmp</p>
                    </div >
                </body>
            </Container >
        );
    }
}

export default Landing;