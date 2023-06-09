/**
 * Template credit: https://material-ui.com/getting-started/templates/
 */

//This React functional component creates a dashboard interface using Material-UI for styling. It dynamically generates a personalized welcome message based on the user's type, enhancing the user experience with customized content.

import React from "react";
import { makeStyles } from "@material-ui/core/styles";

const useStyles = makeStyles((theme) => ({
  root: {
    display: "flex",
    justifyContent: "center",
  },
}));

export default function Dashboard(props) {
  const classes = useStyles();

  return (
    
    <div className={classes.root}>
      <h1>
        Welcome to the {props.userType} dashboard of:
      </h1>
    </div>
  );
}
