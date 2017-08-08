{application, emq_pub_hook, [
	{description, "EMQ Webhook Plugin"},
	{vsn, "2.2"},
	{modules, ['emq_pub_hook','emq_pub_hook_app','emq_pub_hook_sup']},
	{registered, [emq_pub_hook_sup]},
	{applications, [kernel,stdlib]},
	{mod, {emq_pub_hook_app, []}}
]}.