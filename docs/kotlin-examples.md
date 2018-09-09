# Kotlin Examples

## Scope Functions


### also{} #1

```kotlin
        if (aLogger != null)
            logEntry.writeToLog(aLogger)
```

```kotlin
        aLogger?.also { logEntry.writeToLog(it) }
```

### also{} #2

```kotlin
        if (queryException.get() != null)
            throw queryException.get()
```

```kotlin
        queryException.get()?.also { throw it }
```

### also{} #3 
```kotlin
        if (bindingQuery != null)
            bindingQuery.update(mbeanServerQuery, objectNameQuery, filterStmt)
        else
            throw StatementException("No ${BindingQuery::class.java.simpleName} with id $id")
```

```kotlin
        bindingQuery?.also { it.update(mbeanServerQuery, objectNameQuery, filterStmt) }
        ?: throw StatementException("No ${BindingQuery::class.java.simpleName} with id $id")
```

### let{} #1

```kotlin
        val reportedException = if (e.cause != null) e.cause else e
```

```kotlin
        val reportedException = e.cause?.let { it } ?: e
```

### let{} #2

```kotlin
    override fun onLauncherConnectFailure(e: Exception) {
        val reportedException = if (e.cause != null) e.cause else e
        val msg = if (!reportedException!!.message.isNullOrEmpty()) reportedException.message else e.message.orEmpty()
        console
                .println("Unable to connect [${reportedException.javaClass.simpleName}: $msg]. Attempting to reconnect...")
    }
```

```kotlin
    override fun onLauncherConnectFailure(e: Exception) {
        (e.cause?.let { it } ?: e)
                .also {
                    val msg = if (!it.message.isNullOrEmpty()) it.message else e.message.orEmpty()
                    console.println("Unable to connect [${it.javaClass.simpleName}: $msg]. Attempting to reconnect...")
                }
    }
```


### let{} #3

```kotlin
        val elems = Splitter.on("://").splitToList(url)
        return Pair(elems[0],elems[1])
```

```kotlin
        return Splitter.on("://").splitToList(url).let { Pair(it[0], it[1]) }
```

### let{} #4
```kotlin
        val argList = if (agentArg != null) Utils.split(agentArg, " ") else emptyList()
```

```kotlin
        val argList = agentArg?.let { Utils.split(agentArg, " ") } ?: emptyList()
```

### also{} #1

```kotlin
        if (appContextOptions != null) {
            if (appContextOptions!!.isConsoleMetricsEnabled)
                registryContext.startConsoleReporters(1, TimeUnit.MINUTES)
        }
```

```kotlin
        appContextOptions?.also {
            if (it.isConsoleMetricsEnabled)
                registryContext.startConsoleReporters(1, TimeUnit.MINUTES)
        }
```
## Expression Return Values

```kotlin
        val webDavServerContext: WebDavServerContext
        try {
            webDavServerContext = getWebDavServerContext()
        }
        catch (e: ServletContextInitializationTimeoutException) {
            throw ServletException(e.message.orEmpty())
        }
```

```kotlin
        val webDavServerContext =
                try {
                    getWebDavServerContext()
                }
                catch (e: ServletContextInitializationTimeoutException) {
                    throw ServletException(e.message.orEmpty())
                }
```

## Expression Bodies

```kotlin
    override fun clone(): Any {
        val copy: GenericExpression
        try {
            copy = super.clone() as GenericExpression
        }
        catch (e: CloneNotSupportedException) {
            throw InternalError(e.toString())
        }

        copy.highestRankingNumericArgFoundInValidate = NumberValue::class.java
        copy.rankingClass = Any::class.java
        copy.exprType = null
        copy.useDecimal = false
        copy.hasAggregateFunctionRef = null
        copy.args = this@GenericExpression.args.map { it.clone() as GenericValue }.toMutableList()
        
        return copy
    }
```

```kotlin
    override fun clone() =
            try {
                super.clone() as GenericExpression
            }
            catch (e: CloneNotSupportedException) {
                throw InternalError(e.toString())
            }.apply {
                highestRankingNumericArgFoundInValidate = NumberValue::class.java
                rankingClass = Any::class.java
                exprType = null
                useDecimal = false
                hasAggregateFunctionRef = null
                args = this@GenericExpression.args.map { it.clone() as GenericValue }.toMutableList()
            }
```

## Object Destructuring

```java
        val headerText: String
        val buttonText: String
        val readOnly: Boolean

        if (mode == Edit) {
            headerText = "void set$attribName(${attributeFile.typeDesc} p0)"
            buttonText = "Invoke Setter"
            readOnly = false
        }
        else {
            headerText = "${attributeFile.typeDesc} ${attributeFile.getter}"
            buttonText = "Setter"
            readOnly = true
        }
```

```kotlin
        val (headerText, buttonText, readOnly) =
                if (mode == Edit)
                    Triple("void set$attribName(${attributeFile.typeDesc} p0)", "Invoke Setter", false)
                else
                    Triple("${attributeFile.typeDesc} ${attributeFile.getter}", "Setter", true)
```

## Collections

```java
        for (whenVal in whenExprs)
            if (!allowAggregates && whenVal.hasAggregateFunction(valueContext))
                throw JmxQLException(aggregateNowAllowedMsg())
```

```kotlin
        whenExprs
                .asSequence()
                .filter { !allowAggregates && it.hasAggregateFunction(valueContext) }
                .forEach { throw JmxQLException(aggregateNowAllowedMsg()) }
```

## Lazy vs Eager

```kotlin
fun main(args: Array<String>) {
    val x = listOf(1, 2, 3).filter { print("$it "); it >= 2 }
    print("before sum ")
    println(x.sum())
}

// 1 2 3 before sum 5
```

```kotlin
fun main(args: Array<String>) {
    val x = listOf(1, 2, 3).asSequence().filter { print("$it "); it >= 2 }
    print("before sum ")
    println(x.sum())
}

// before sum 1 2 3 5
```