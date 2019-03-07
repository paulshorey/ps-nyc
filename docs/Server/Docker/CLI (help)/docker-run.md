# docker run --help  
  
**`--add-host1`** 	 (_list_)  Add a custom host-to-IP mapping (host:ip)  
**`-a, --attach1`** 	 (_list_) 	Attach to STDIN, STDOUT or STDERR  
**`--blkio-weight uint161`** 	 (_-_) 	Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)  
**`--blkio-weight-device1`** 	 (_list_) 	Block IO weight (relative device weight) (default [])  
**`--cap-add1`** 	 (_list_) 	Add Linux capabilities  
**`--cap-drop1`** 	 (_list_) 	Drop Linux capabilities  
**`--cgroup-parent1`** 	 (_string_) 	Optional parent cgroup for the container  
**`--cidfile1`** 	 (_string_) 	Write the container ID to the file  
**`--cpu-period1`** 	 (_int_) 	Limit CPU CFS (Completely Fair Scheduler) period  
**`--cpu-quota1`** 	 (_int_) 	Limit CPU CFS (Completely Fair Scheduler) quota  
**`--cpu-rt-period1`** 	 (_int_) 	Limit CPU real-time period in microseconds  
**`--cpu-rt-runtime1`** 	 (_int_) 	Limit CPU real-time runtime in microseconds  
**`-c, --cpu-shares1`** 	 (_int_) 	CPU shares (relative weight)  
**`--cpus1`** 	 (_decimal_) 	Number of CPUs  
**`--cpuset-cpus1`** 	 (_string_) 	CPUs in which to allow execution (0-3, 0,1)  
**`--cpuset-mems1`** 	 (_string_) 	MEMs in which to allow execution (0-3, 0,1)  
**`-d, --detach1`** 	 (_-_) 	Run container in background and print container ID  
**`--detach-keys1`** 	 (_string_) 	Override the key sequence for detaching a container  
**`--device1`** 	 (_list_) 	Add a host device to the container  
**`--device-cgroup-rule1`** 	 (_list_) 	Add a rule to the cgroup allowed devices list  
**`--device-read-bps1`** 	 (_list_) 	Limit read rate (bytes per second) from a device (default [])  
**`--device-read-iops1`** 	 (_list_) 	Limit read rate (IO per second) from a device (default [])  
**`--device-write-bps1`** 	 (_list_) 	Limit write rate (bytes per second) to a device (default [])  
**`--device-write-iops1`** 	 (_list_) 	Limit write rate (IO per second) to a device (default [])  
**`--disable-content-trust1`** 	 (_-_) 	Skip image verification (default true)  
**`--dns1`** 	 (_list_) 	Set custom DNS servers  
**`--dns-option1`** 	 (_list_) 	Set DNS options  
**`--dns-search1`** 	 (_list_) 	Set custom DNS search domains  
**`--entrypoint1`** 	 (_string_) 	Overwrite the default ENTRYPOINT of the image  
**`-e, --env1`** 	 (_list_) 	Set environment variables  
**`--env-file1`** 	 (_list_) 	Read in a file of environment variables  
**`--expose1`** 	 (_list_) 	Expose a port or a range of ports  
**`--group-add1`** 	 (_list_) 	Add additional groups to join  
**`--health-cmd1`** 	 (_string_) 	Command to run to check health  
**`--health-interval1`** 	 (_duration_) 	Time between running the check (ms|s|m|h) (default 0s)  
**`--health-retries1`** 	 (_int_) 	Consecutive failures needed to report unhealthy  
**`--health-start-period1`** 	 (_duration_) 	Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)  
**`--health-timeout1`** 	 (_duration_) 	Maximum time to allow one check to run (ms|s|m|h) (default 0s)  
**`--help1`** 	 (_-_) 	Print usage  
**`-h, --hostname1`** 	 (_string_) 	Container host name  
**`--init1`** 	 (_-_) 	Run an init inside the container that forwards signals and reaps processes  
**`-i, --interactive1`** 	 (_-_) 	Keep STDIN open even if not attached  
**`--ip1`** 	 (_string_) 	IPv4 address (e.g., 172.30.100.104)  
**`--ip61`** 	 (_string_) 	IPv6 address (e.g., 2001:db8::33)  
**`--ipc1`** 	 (_string_) 	IPC mode to use  
**`--isolation1`** 	 (_string_) 	Container isolation technology  
**`--kernel-memory1`** 	 (_bytes_) 	Kernel memory limit  
**`-l, --label1`** 	 (_list_) 	Set meta data on a container  
**`--label-file1`** 	 (_list_) 	Read in a line delimited file of labels  
**`--link1`** 	 (_list_) 	Add link to another container  
**`--link-local-ip1`** 	 (_list_) 	Container IPv4/IPv6 link-local addresses  
**`--log-driver1`** 	 (_string_) 	Logging driver for the container  
**`--log-opt1`** 	 (_list_) 	Log driver options  
**`--mac-address1`** 	 (_string_) 	Container MAC address (e.g., 92:d0:c6:0a:29:33)  
**`-m, --memory1`** 	 (_bytes_) 	Memory limit  
**`--memory-reservation1`** 	 (_bytes_) 	Memory soft limit  
**`--memory-swap1`** 	 (_bytes_) 	Swap limit equal to memory plus swap: '-1' to enable unlimited swap  
**`--memory-swappiness1`** 	 (_int_) 	Tune container memory swappiness (0 to 100) (default -1)  
**`--mount1`** 	 (_mount_) 	Attach a filesystem mount to the container  
**`--name1`** 	 (_string_) 	Assign a name to the container  
**`--network1`** 	 (_string_) 	Connect a container to a network (default "default")  
**`--network-alias1`** 	 (_list_) 	Add network-scoped alias for the container  
**`--no-healthcheck1`** 	 (_-_) 	Disable any container-specified HEALTHCHECK  
**`--oom-kill-disable1`** 	 (_-_) 	Disable OOM Killer  
**`--oom-score-adj1`** 	 (_int_) 	Tune host's OOM preferences (-1000 to 1000)  
**`--pid1`** 	 (_string_) 	PID namespace to use  
**`--pids-limit1`** 	 (_int_) 	Tune container pids limit (set -1 for unlimited)  
**`--platform1`** 	 (_string_) 	Set platform if server is multi-platform capable  
**`--privileged1`** 	 (_-_) 	Give extended privileges to this container  
**`-p, --publish1`** 	 (_list_) 	Publish a container's port(s) to the host  
**`-P, --publish-all1`** 	 (_-_) 	Publish all exposed ports to random ports  
**`--read-only1`** 	 (_-_) 	Mount the container's root filesystem as read only  
**`--restart1`** 	 (_string_) 	Restart policy to apply when a container exits (default "no")  
**`--rm1`** 	 (_-_) 	Automatically remove the container when it exits  
**`--runtime1`** 	 (_string_) 	Runtime to use for this container  
**`--security-opt1`** 	 (_list_) 	Security Options  
**`--shm-size1`** 	 (_bytes_) 	Size of /dev/shm  
**`--sig-proxy1`** 	 (_-_) 	Proxy received signals to the process (default true)  
**`--stop-signal1`** 	 (_string_) 	Signal to stop a container (default "SIGTERM")  
**`--stop-timeout1`** 	 (_int_) 	Timeout (in seconds) to stop a container  
**`--storage-opt1`** 	 (_list_) 	Storage driver options for the container  
**`--sysctl1`** 	 (_map_) 	Sysctl options (default map[])  
**`--tmpfs1`** 	 (_list_) 	Mount a tmpfs directory  
**`-t, --tty1`** 	 (_-_) 	Allocate a pseudo-TTY  
**`--ulimit1`** 	 (_ulimit_) 	Ulimit options (default [])  
**`-u, --user1`** 	 (_string_) 	Username or UID (format: <name|uid>[:<group|gid>])  
**`--userns1`** 	 (_string_) 	User namespace to use  
**`--uts1`** 	 (_string_) 	UTS namespace to use  
**`-v, --volume1`** 	 (_list_) 	Bind mount a volume  
**`--volume-driver1`** 	 (_string_) 	Optional volume driver for the container  
**`--volumes-from1`** 	 (_list_) 	Mount volumes from the specified container(s)  
**`-w, --workdir1`** 	 (_string_) 	Working directory inside the container