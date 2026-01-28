Rails.application.config.session_store :redis_store,
                                       servers: [
                                         {
                                           host: "redis-single",
                                           port: 6379,
                                           db: 0,
                                           namespace: "session"
                                         }
                                       ],
                                       expire_after: 90.minutes,
                                       key: "_redis_cluster_example_session"