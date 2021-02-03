import React from "react";
import { Pane, Button, Heading, Link, Popover, Menu } from "evergreen-ui";


const css = `
.navbarText {
    allignSelf: 'center';
}
`

const AdminNavbar = () => {
  return (
    <>
    <style>
        {css}
    </style>
      <Pane display="flex" padding={16} background="tint2" borderRadius={3}>
        <Pane flex={1} alignItems="center" display="flex">
          <Heading size={600}>Adrenaline ERP</Heading>
        </Pane>
      </Pane>
    </>
  );
};

export default AdminNavbar;