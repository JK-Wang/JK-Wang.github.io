# DataSet FLIP-131

## DataSet
- 有限的输入数据
- 精细的故障域控制，单个 task 失败可以进入阻塞状态，不会导致上下游重启
- 针对有限数据集，采用数据库类似的优化方案，更高效的处理数据，例如：hash join, merge join, sorting/grouping for aggregation

## DataStream
- 支持无限的输入
- 故障时需要连带上下游一起重启
- 支持基于 watermark 的增量式输出
- 由于数据源是无限的，在处理时需要一直保存所有数据的信息，例如 hash key

## Table API/SQL
- 数据有已知的结构（DDL）
- 因为 DDL 是已知信息，我们可以在处理时只反序列化相关字段，甚至更近一步，直接基于二进制数据完成排序等操作。
- 用户不能自定义 timer 或 state