from i3pystatus import Status

status = Status()

status.register("clock",
    format="%Y-%m-%d %H:%M:%S")

status.register("load",
    format="L: {avg1} {avg5} {avg15}")

status.register("temp",
    format="T: {temp:.0f}°C",)

status.register("mem",
    format="M: {used_mem:.1f} GiB/{total_mem:.1f} GiB",
    divisor=1024**3,
    color="#FFFFFF",)

status.register("battery",
    format="B: {status}{percentage:.2f}% {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=10,
    status={
        "DIS":  "DIS ",
        "CHR":  "CHR ",
        "FULL": "",
    },
    full_color="#FFFFFF",)

status.register("network",
    interface="enp3s0f1",
    format_up="E: {v4cidr}",
    format_down="E: DOWN",)

status.register("network",
    interface="wlp2s0",
    format_up="W: {essid} ({quality}%)",
    format_down="W: DOWN",)

status.register("disk",
    path="/",
    format="D: {used:.1f} GiB/{total:.1f} GiB",)

status.register("pulseaudio",
    format="♪: {volume}%",)

status.run()
