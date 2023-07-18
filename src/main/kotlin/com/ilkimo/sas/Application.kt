package com.ilkimo.sas

import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.ilkimo.sas.plugins.*
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun main() {
    embeddedServer(Netty, port = 8080, host = "0.0.0.0", module = Application::module)
            .start(wait = true)
}

fun Application.module() {
//    install(DefaultHeaders)
//    install(CallLogging)
    install(Routing) {
        get("/sas") {
            call.respondText("SAS", ContentType.Text.Plain)
        }
        get("/") {
            call.respondText("hello ktor!", ContentType.Text.Plain)
        }
    }
}

