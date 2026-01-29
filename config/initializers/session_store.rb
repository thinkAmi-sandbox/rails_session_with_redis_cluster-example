Rails.application.config.session_store :redis_store,
                                       redis_store: Redis::Store.new(
                                         cluster: %w[
                                           redis://redis-cluster-node-1:6379
                                           redis://redis-cluster-node-2:6379
                                           redis://redis-cluster-node-3:6379
                                         ],
                                         namespace: "session"
                                       ),
                                       expire_after: 90.minutes,
                                       key: "_redis_cluster_example_session"
