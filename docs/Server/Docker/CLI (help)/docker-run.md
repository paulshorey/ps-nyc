# docker run --help  
  
* **`--add-host`** 	 (_list_) 	**Add a custom host-to-IP mapping (host:ip)**  
* **`-a, --attach`** 	 (_list_) 	**Attach to STDIN, STDOUT or STDERR**  
* **`--blkio-weight uint16`** 	 (_-_) 	**Block IO (relative weight), between 10 and 1000, or 0 to disable (default 0)**  
* **`--blkio-weight-device`** 	 (_list_) 	**Block IO weight (relative device weight) (default [])**  
* **`--cap-add`** 	 (_list_) 	**Add Linux capabilities**  
* **`--cap-drop`** 	 (_list_) 	**Drop Linux capabilities**  
* **`--cgroup-parent`** 	 (_string_) 	**Optional parent cgroup for the container**  
* **`--cidfile`** 	 (_string_) 	**Write the container ID to the file**  
* **`--cpu-period`** 	 (_int_) 	**Limit CPU CFS (Completely Fair Scheduler) period**  
* **`--cpu-quota`** 	 (_int_) 	**Limit CPU CFS (Completely Fair Scheduler) quota**  
* **`--cpu-rt-period`** 	 (_int_) 	**Limit CPU real-time period in microseconds**  
* **`--cpu-rt-runtime`** 	 (_int_) 	**Limit CPU real-time runtime in microseconds**  
* **`-c, --cpu-shares`** 	 (_int_) 	**CPU shares (relative weight)**  
* **`--cpus`** 	 (_decimal_) 	**Number of CPUs**  
* **`--cpuset-cpus`** 	 (_string_) 	**CPUs in which to allow execution (0-3, 0,1)**  
* **`--cpuset-mems`** 	 (_string_) 	**MEMs in which to allow execution (0-3, 0,1)**  
* **`-d, --detach`** 	 (_-_) 	**Run container in background and print container ID**  
* **`--detach-keys`** 	 (_string_) 	**Override the key sequence for detaching a container**  
* **`--device`** 	 (_list_) 	**Add a host device to the container**  
* **`--device-cgroup-rule`** 	 (_list_) 	**Add a rule to the cgroup allowed devices list**  
* **`--device-read-bps`** 	 (_list_) 	**Limit read rate (bytes per second) from a device (default [])**  
* **`--device-read-iops`** 	 (_list_) 	**Limit read rate (IO per second) from a device (default [])**  
* **`--device-write-bps`** 	 (_list_) 	**Limit write rate (bytes per second) to a device (default [])**  
* **`--device-write-iops`** 	 (_list_) 	**Limit write rate (IO per second) to a device (default [])**  
* **`--disable-content-trust`** 	 (_-_) 	**Skip image verification (default true)**  
* **`--dns`** 	 (_list_) 	**Set custom DNS servers**  
* **`--dns-option`** 	 (_list_) 	**Set DNS options**  
* **`--dns-search`** 	 (_list_) 	**Set custom DNS search domains**  
* **`--entrypoint`** 	 (_string_) 	**Overwrite the default ENTRYPOINT of the image**  
* **`-e, --env`** 	 (_list_) 	**Set environment variables**  
* **`--env-file`** 	 (_list_) 	**Read in a file of environment variables**  
* **`--expose`** 	 (_list_) 	**Expose a port or a range of ports**  
* **`--group-add`** 	 (_list_) 	**Add additional groups to join**  
* **`--health-cmd`** 	 (_string_) 	**Command to run to check health**  
* **`--health-interval`** 	 (_duration_) 	**Time between running the check (ms|s|m|h) (default 0s)**  
* **`--health-retries`** 	 (_int_) 	**Consecutive failures needed to report unhealthy**  
* **`--health-start-period`** 	 (_duration_) 	**Start period for the container to initialize before starting health-retries countdown (ms|s|m|h) (default 0s)**  
* **`--health-timeout`** 	 (_duration_) 	**Maximum time to allow one check to run (ms|s|m|h) (default 0s)**  
* **`--help`** 	 (_-_) 	**Print usage**  
* **`-h, --hostname`** 	 (_string_) 	**Container host name**  
* **`--init`** 	 (_-_) 	**Run an init inside the container that forwards signals and reaps processes**  
* **`-i, --interactive`** 	 (_-_) 	**Keep STDIN open even if not attached**  
* **`--ip`** 	 (_string_) 	**IPv4 address (e.g., 172.30.100.104)**  
* **`--ip6`** 	 (_string_) 	**IPv6 address (e.g., 2001:db8::33)**  
* **`--ipc`** 	 (_string_) 	**IPC mode to use**  
* **`--isolation`** 	 (_string_) 	**Container isolation technology**  
* **`--kernel-memory`** 	 (_bytes_) 	**Kernel memory limit**  
* **`-l, --label`** 	 (_list_) 	**Set meta data on a container**  
* **`--label-file`** 	 (_list_) 	**Read in a line delimited file of labels**  
* **`--link`** 	 (_list_) 	**Add link to another container**  
* **`--link-local-ip`** 	 (_list_) 	**Container IPv4/IPv6 link-local addresses**  
* **`--log-driver`** 	 (_string_) 	**Logging driver for the container**  
* **`--log-opt`** 	 (_list_) 	**Log driver options**  
* **`--mac-address`** 	 (_string_) 	**Container MAC address (e.g., 92:d0:c6:0a:29:33)**  
* **`-m, --memory`** 	 (_bytes_) 	**Memory limit**  
* **`--memory-reservation`** 	 (_bytes_) 	**Memory soft limit**  
* **`--memory-swap`** 	 (_bytes_) 	**Swap limit equal to memory plus swap: '-1' to enable unlimited swap**  
* **`--memory-swappiness`** 	 (_int_) 	**Tune container memory swappiness (0 to 100) (default -1)**  
* **`--mount`** 	 (_mount_) 	**Attach a filesystem mount to the container**  
* **`--name`** 	 (_string_) 	**Assign a name to the container**  
* **`--network`** 	 (_string_) 	**Connect a container to a network (default "default")**  
* **`--network-alias`** 	 (_list_) 	**Add network-scoped alias for the container**  
* **`--no-healthcheck`** 	 (_-_) 	**Disable any container-specified HEALTHCHECK**  
* **`--oom-kill-disable`** 	 (_-_) 	**Disable OOM Killer**  
* **`--oom-score-adj`** 	 (_int_) 	**Tune host's OOM preferences (-1000 to 1000)**  
* **`--pid`** 	 (_string_) 	**PID namespace to use**  
* **`--pids-limit`** 	 (_int_) 	**Tune container pids limit (set -1 for unlimited)**  
* **`--platform`** 	 (_string_) 	**Set platform if server is multi-platform capable**  
* **`--privileged`** 	 (_-_) 	**Give extended privileges to this container**  
* **`-p, --publish`** 	 (_list_) 	**Publish a container's port(s) to the host**  
* **`-P, --publish-all`** 	 (_-_) 	**Publish all exposed ports to random ports**  
* **`--read-only`** 	 (_-_) 	**Mount the container's root filesystem as read only**  
* **`--restart`** 	 (_string_) 	**Restart policy to apply when a container exits (default "no")**  
* **`--rm`** 	 (_-_) 	**Automatically remove the container when it exits**  
* **`--runtime`** 	 (_string_) 	**Runtime to use for this container**  
* **`--security-opt`** 	 (_list_) 	**Security Options**  
* **`--shm-size`** 	 (_bytes_) 	**Size of /dev/shm**  
* **`--sig-proxy`** 	 (_-_) 	**Proxy received signals to the process (default true)**  
* **`--stop-signal`** 	 (_string_) 	**Signal to stop a container (default "SIGTERM")**  
* **`--stop-timeout`** 	 (_int_) 	**Timeout (in seconds) to stop a container**  
* **`--storage-opt`** 	 (_list_) 	**Storage driver options for the container**  
* **`--sysctl`** 	 (_map_) 	**Sysctl options (default map[])**  
* **`--tmpfs`** 	 (_list_) 	**Mount a tmpfs directory**  
* **`-t, --tty`** 	 (_-_) 	**Allocate a pseudo-TTY**  
* **`--ulimit`** 	 (_ulimit_) 	**Ulimit options (default [])**  
* **`-u, --user`** 	 (_string_) 	**Username or UID (format: <name|uid>[:<group|gid>])**  
* **`--userns`** 	 (_string_) 	**User namespace to use**  
* **`--uts`** 	 (_string_) 	**UTS namespace to use**  
* **`-v, --volume`** 	 (_list_) 	**Bind mount a volume**  
* **`--volume-driver`** 	 (_string_) 	**Optional volume driver for the container**  
* **`--volumes-from`** 	 (_list_) 	**Mount volumes from the specified container(s)**  
* **`-w, --workdir`** 	 (_string_) 	**Working directory inside the container**