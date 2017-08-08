
emq_pub_hook
=====

EMQ broker plugin to catch broker hooks through pubhook.<br>
[http://emqtt.io](http://emqtt.io)<br>
[https://www.sakib.ninja](https://www.sakib.ninja)

Setup
-----

##### In Makefile,

DEPS += emq_pub_hook

dep_emq_pub_hook = git https://github.com/emqtt/emq-pub-hook master

##### In relx.config

{emq_pubhook_plugin, load}

##### emq_pub_hook.conf
```
pub.hook.api.url = http://127.0.0.1

pub.hook.rule.client.connected.1     = {"action": "on_client_connected"}
pub.hook.rule.client.disconnected.1  = {"action": "on_client_disconnected"}
pub.hook.rule.client.subscribe.1     = {"action": "on_client_subscribe"}
pub.hook.rule.client.unsubscribe.1   = {"action": "on_client_unsubscribe"}
pub.hook.rule.session.created.1      = {"action": "on_session_created"}
pub.hook.rule.session.subscribed.1   = {"action": "on_session_subscribed"}
pub.hook.rule.session.unsubscribed.1 = {"action": "on_session_unsubscribed"}
pub.hook.rule.session.terminated.1   = {"action": "on_session_terminated"}
pub.hook.rule.message.publish.1      = {"action": "on_message_publish"}
pub.hook.rule.message.delivered.1    = {"action": "on_message_delivered"}
pub.hook.rule.message.acked.1        = {"action": "on_message_acked"}

```

API
----
* client.connected
```json
{
    "action":"client_connected",
    "client_id":"C_1492410235117",
    "conn_ack":0
}
```

* client.disconnected
```json
{
    "action":"client_disconnected",
    "client_id":"C_1492410235117",
    "reason":"normal"
}
```

* client.subscribe
```json
{
    "action":"client_subscribe",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "topic":"world",
    "opts":{
        "qos":0
    }
}
```

* client.unsubscribe
```json
{
    "action":"client_unsubscribe",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "topic":"world"
}
```

* session.created
```json
{
    "action":"session_created",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117"
}
```

* session.subscribed
```json
{
    "action":"session_subscribed",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "topic":"world",
    "opts":{
        "qos":0
    }
}
```

* session.unsubscribed
```json
{
    "action":"session_unsubscribed",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "topic":"world"
}
```

* session.terminated
```json
{
    "action":"session_terminated",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "reason":"normal"
}
```

* message.publish
```json
{
    "action":"message_publish",
    "from_client_id":"C_1492410235117",
    "from_username":"C_1492410235117",
    "topic":"world",
    "qos":0,
    "retain":true,
    "payload":"Hello world!",
    "ts":1492412774
}
```

* message.delivered
```json
{
    "action":"message_delivered",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "from_client_id":"C_1492410235117",
    "from_username":"C_1492410235117",
    "topic":"world",
    "qos":0,
    "retain":true,
    "payload":"Hello world!",
    "ts":1492412826
}
```

* message.acked
```json
{
    "action":"message_acked",
    "client_id":"C_1492410235117",
    "username":"C_1492410235117",
    "from_client_id":"C_1492410235117",
    "from_username":"C_1492410235117",
    "topic":"world",
    "qos":1,
    "retain":true,
    "payload":"Hello world!",
    "ts":1492412914
}
```

License
-------

Apache License Version 2.0

Author
------

* [Sakib Sami](https://github.com/s4kibs4mi)

Contributors
------

* [turtleDeng](https://github.com/turtleDeng)
* [vishr](https://github.com/vishr)
* [emqplus](https://github.com/emqplus)
* [huangdan](https://github.com/huangdan)
