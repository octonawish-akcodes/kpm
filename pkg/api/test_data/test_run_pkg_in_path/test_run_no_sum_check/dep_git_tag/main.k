import catalog.models.schema.v1 as ac
import catalog.models.schema.v1.workload as wl
import catalog.models.schema.v1.workload.container as c
import catalog.models.schema.v1.workload.container.probe as p
import catalog.models.schema.v1.monitoring as m

ac.AppConfiguration {
    workload: wl.Service {
        containers: {
            "nginx": c.Container {
                image: "nginx:v1"
                # Run the following command as defined
                command: ["/bin/sh", "-c", "echo hi"]
                # Extra arguments append to command defined above
                args: ["/bin/sh", "-c", "echo hi"]
                env: {
                    # An environment variable of name "env1" and value "VALUE" will be set
                    "env1": "VALUE"
                    # An environment variable of name "env2" and value of the key "key" in the
                    # secret named "sec-name" will be set.
                    "env2": "secret://sec-name/key"
                }
                # Run the command "/bin/sh -c echo hi", as defined above, in the directory "/tmp"
                workingDir: "/tmp"
                # Configure a HTTP readiness probe
                readinessProbe: p.Probe {
                    probeHandler: p.Http {
                        url: "http://localhost:80"
                    }
                    initialDelaySeconds: 10
                }
            }
        }
        # Set the replicas
        replicas: 2
    }
    # Add the monitoring configuration backed by Prometheus
    monitoring: m.Prometheus{
        interval:       "30s"
        timeout:        "15s"
        path:           "/metrics"
        port:           "web"
        scheme:         "http"
    }
}