import React from "react";
import ListItem from "@material-ui/core/ListItem";
import ListItemIcon from "@material-ui/core/ListItemIcon";
import ListItemText from "@material-ui/core/ListItemText";
import DashboardIcon from "@material-ui/icons/Dashboard";
import ShoppingCartIcon from "@material-ui/icons/ShoppingCart";
import PeopleIcon from "@material-ui/icons/People";
import BarChartIcon from "@material-ui/icons/BarChart";
import LayersIcon from "@material-ui/icons/Layers";
import AssignmentTurnedInIcon from '@material-ui/icons/AssignmentTurnedIn';
import LocalShippingIcon from '@material-ui/icons/LocalShipping';


export default function MainListItems({ setCurrentPage }) {
  return <div>
    <ListItem button onClick={() => setCurrentPage(1)}>
      <ListItemIcon>
        <BarChartIcon />
      </ListItemIcon>
      <ListItemText primary="Sales" />
    </ListItem>
    <ListItem button onClick={() => setCurrentPage(2)}>
      <ListItemIcon>
        <AssignmentTurnedInIcon />
      </ListItemIcon>
      <ListItemText primary="Quality Management" />
    </ListItem>
    <ListItem button onClick={() => setCurrentPage(3)}>
      <ListItemIcon>
        <LocalShippingIcon />
      </ListItemIcon>
      <ListItemText primary="Shipping" />
    </ListItem>
  </div>

}




