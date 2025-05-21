include env.mk

dev_setup:
	./scripts/development/etcd/etcd.setup.sh $(NAMESPACE)

dev_teardown:
	./scripts/development/etcd/etcd.teardown.sh $(NAMESPACE)
