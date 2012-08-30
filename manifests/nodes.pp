# nodes.pp
node default {
    include apps::ntp
    }
node "controller.cloudcomplab.ch" {
    include apps::ntp
    }
