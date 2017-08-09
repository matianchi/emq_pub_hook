
emq_pub_hook
=====

EMQ broker plugin to catch broker hooks through pubhook.<br>
[http://emqtt.io](http://emqtt.io)<br>

Setup
-----

##### In Makefile,

DEPS += emq_pub_hook

dep_emq_pub_hook = git https://github.com/matianchi/emq-pub-hook master

##### In relx.config

{emq_pub_hook_plugin, load}

##### emq_pub_hook.conf
```
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
##### subscribe
Subscribe topic 'dataflow' to receive messages.

License
-------

Apache License Version 2.0

Author
------

* matianchi

