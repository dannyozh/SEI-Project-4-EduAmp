import React from 'react';
import './style.scss';
import classnames from 'classnames';
import Container from '@material-ui/core/Container';
import Box from '@material-ui/core/Box';
import ButtonAppBar from "../appbar/appbar";
import ScrollTop from "../scrolltop/scrolltop";
import CenteredGrid from "../gridbox/gridbox"

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
        return (<div>
            <ButtonAppBar title="EduAmp" props />
            <br />
            <Container>
                <CenteredGrid brandmessage="EduAmp is a podcast platform curated for curious minds" synopsis="Dive into over 20,000 podcasts and enlarge your knowledge bank." />
            </Container>

        </div>

        );
    }
}

export default Landing;