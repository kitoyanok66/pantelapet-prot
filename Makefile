PROTOS := $(wildcard proto/*/*.proto)
OUT_DIR := .

generate:
	protoc \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go_grpc_out=$(OUT_DIR) --go_grpc_opt=paths=source_relative \
		$(PROTOS)

clean:
# 	find . -name "*.pb.go" -delete
	del /S /Q *.pb.go