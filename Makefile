pre:
	go mod tidy
	brew install graphviz

run:
	go run .

pprof:
	open http://127.0.0.1:6060/debug/pprof/

profile:
	go tool pprof http://localhost:6060/debug/pprof/profile?seconds=60

heap:
	go tool pprof http://localhost:6060/debug/pprof/heap


bench:
	go test -bench=. -cpuprofile=cpu.prof

# top graph peek source
bench-view:
	go tool pprof -http=:8080 cpu.prof
bench-web:
	go tool pprof cpu.prof # input web


pre-fire:
	go install github.com/google/pprof@latest

fire-view:
	pprof -http=:8080 cpu.prof

