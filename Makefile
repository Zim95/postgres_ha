include env.mk

dev_setup:
	./scripts/development/etcd/etcd.setup.sh $(NAMESPACE)
	./scripts/development/postgres/postgres.setup.sh $(NAMESPACE)

dev_teardown:
	./scripts/development/etcd/etcd.teardown.sh $(NAMESPACE)
	./scripts/development/postgres/postgres.teardown.sh $(NAMESPACE)
