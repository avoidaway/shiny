% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mock-session.R
\name{MockShinySession}
\alias{MockShinySession}
\title{Mock Shiny Session}
\description{
An R6 class suitable for testing purposes. Simulates, to the
extent possible, the behavior of the \code{ShinySession} class. The \code{session}
parameter provided to Shiny server functions and modules is an instance of
a \code{ShinySession} in normal operation.

Most kinds of module and server testing do not require this class be
instantiated manually. See instead \code{\link[=testServer]{testServer()}}.

In order to support advanced usage, instances of \code{MockShinySession} are
\strong{unlocked} so that public methods and fields of instances may be
modified. For example, in order to test authentication workflows, the
\code{user} or \code{groups} fields may be overridden. Modified instances of
\code{MockShinySession} may then be passed explicitly as the \code{session} argument
of \code{\link[=testServer]{testServer()}}.
}
\examples{

## ------------------------------------------------
## Method `MockShinySession$setInputs`
## ------------------------------------------------

\dontrun{
session$setInputs(x=1, y=2)
}
}
\section{Public fields}{
\if{html}{\out{<div class="r6-fields">}}
\describe{
\item{\code{env}}{The environment associated with the session.}

\item{\code{returned}}{The value returned by the module under test.}

\item{\code{singletons}}{Hardcoded as empty. Needed for rendering HTML (i.e. renderUI).}

\item{\code{clientData}}{Mock client data that always returns a size for plots.}

\item{\code{output}}{The shinyoutputs associated with the session.}

\item{\code{input}}{The reactive inputs associated with the session.}

\item{\code{userData}}{An environment initialized as empty.}

\item{\code{progressStack}}{A stack of progress objects.}

\item{\code{token}}{On a real \code{ShinySession}, used to identify this instance in URLs.}

\item{\code{cache}}{The session cache object.}

\item{\code{appcache}}{The app cache object.}

\item{\code{restoreContext}}{Part of bookmarking support in a real
\code{ShinySession} but always \code{NULL} for a \code{MockShinySession}.}

\item{\code{groups}}{Character vector of groups associated with an authenticated
user. Always \code{NULL} for a \code{MockShinySesion}.}

\item{\code{user}}{The username of an authenticated user. Always \code{NULL} for a
\code{MockShinySession}.}

\item{\code{options}}{A list containing session-level shinyOptions.}
}
\if{html}{\out{</div>}}
}
\section{Active bindings}{
\if{html}{\out{<div class="r6-active-bindings">}}
\describe{
\item{\code{files}}{For internal use only.}

\item{\code{downloads}}{For internal use only.}

\item{\code{closed}}{Deprecated in \code{ShinySession} and signals an error.}

\item{\code{session}}{Deprecated in ShinySession and signals an error.}

\item{\code{request}}{An empty environment where the request should be. The request isn't meaningfully mocked currently.}
}
\if{html}{\out{</div>}}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-MockShinySession-new}{\code{MockShinySession$new()}}
\item \href{#method-MockShinySession-onFlush}{\code{MockShinySession$onFlush()}}
\item \href{#method-MockShinySession-onFlushed}{\code{MockShinySession$onFlushed()}}
\item \href{#method-MockShinySession-onEnded}{\code{MockShinySession$onEnded()}}
\item \href{#method-MockShinySession-isEnded}{\code{MockShinySession$isEnded()}}
\item \href{#method-MockShinySession-isClosed}{\code{MockShinySession$isClosed()}}
\item \href{#method-MockShinySession-close}{\code{MockShinySession$close()}}
\item \href{#method-MockShinySession-cycleStartAction}{\code{MockShinySession$cycleStartAction()}}
\item \href{#method-MockShinySession-fileUrl}{\code{MockShinySession$fileUrl()}}
\item \href{#method-MockShinySession-setInputs}{\code{MockShinySession$setInputs()}}
\item \href{#method-MockShinySession-.scheduleTask}{\code{MockShinySession$.scheduleTask()}}
\item \href{#method-MockShinySession-elapse}{\code{MockShinySession$elapse()}}
\item \href{#method-MockShinySession-.now}{\code{MockShinySession$.now()}}
\item \href{#method-MockShinySession-defineOutput}{\code{MockShinySession$defineOutput()}}
\item \href{#method-MockShinySession-getOutput}{\code{MockShinySession$getOutput()}}
\item \href{#method-MockShinySession-ns}{\code{MockShinySession$ns()}}
\item \href{#method-MockShinySession-flushReact}{\code{MockShinySession$flushReact()}}
\item \href{#method-MockShinySession-makeScope}{\code{MockShinySession$makeScope()}}
\item \href{#method-MockShinySession-setEnv}{\code{MockShinySession$setEnv()}}
\item \href{#method-MockShinySession-setReturned}{\code{MockShinySession$setReturned()}}
\item \href{#method-MockShinySession-getReturned}{\code{MockShinySession$getReturned()}}
\item \href{#method-MockShinySession-genId}{\code{MockShinySession$genId()}}
\item \href{#method-MockShinySession-rootScope}{\code{MockShinySession$rootScope()}}
\item \href{#method-MockShinySession-onUnhandledError}{\code{MockShinySession$onUnhandledError()}}
\item \href{#method-MockShinySession-unhandledError}{\code{MockShinySession$unhandledError()}}
\item \href{#method-MockShinySession-freezeValue}{\code{MockShinySession$freezeValue()}}
\item \href{#method-MockShinySession-onSessionEnded}{\code{MockShinySession$onSessionEnded()}}
\item \href{#method-MockShinySession-registerDownload}{\code{MockShinySession$registerDownload()}}
\item \href{#method-MockShinySession-getCurrentOutputInfo}{\code{MockShinySession$getCurrentOutputInfo()}}
\item \href{#method-MockShinySession-clone}{\code{MockShinySession$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-new"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-new}{}}}
\subsection{Method \code{new()}}{
Create a new MockShinySession.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$new()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-onFlush"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-onFlush}{}}}
\subsection{Method \code{onFlush()}}{
Define a callback to be invoked before a reactive flush
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$onFlush(fun, once = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{fun}}{The function to invoke}

\item{\code{once}}{If \code{TRUE}, will only run once. Otherwise, will run every time reactives are flushed.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-onFlushed"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-onFlushed}{}}}
\subsection{Method \code{onFlushed()}}{
Define a callback to be invoked after a reactive flush
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$onFlushed(fun, once = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{fun}}{The function to invoke}

\item{\code{once}}{If \code{TRUE}, will only run once. Otherwise, will run every time reactives are flushed.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-onEnded"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-onEnded}{}}}
\subsection{Method \code{onEnded()}}{
Define a callback to be invoked when the session ends
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$onEnded(sessionEndedCallback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{sessionEndedCallback}}{The callback to invoke when the session has ended.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-isEnded"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-isEnded}{}}}
\subsection{Method \code{isEnded()}}{
Returns \code{FALSE} if the session has not yet been closed
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$isEnded()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-isClosed"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-isClosed}{}}}
\subsection{Method \code{isClosed()}}{
Returns \code{FALSE} if the session has not yet been closed
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$isClosed()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-close"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-close}{}}}
\subsection{Method \code{close()}}{
Closes the session
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$close()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-cycleStartAction"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-cycleStartAction}{}}}
\subsection{Method \code{cycleStartAction()}}{
Unsophisticated mock implementation that merely invokes
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$cycleStartAction(callback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{The callback to be invoked.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-fileUrl"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-fileUrl}{}}}
\subsection{Method \code{fileUrl()}}{
Base64-encode the given file. Needed for image rendering.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$fileUrl(name, file, contentType = "application/octet-stream")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{Not used}

\item{\code{file}}{The file to be encoded}

\item{\code{contentType}}{The content type of the base64-encoded string}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-setInputs"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-setInputs}{}}}
\subsection{Method \code{setInputs()}}{
Sets reactive values associated with the \code{session$inputs}
object and flushes the reactives.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$setInputs(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{The inputs to set. These arguments are processed with
\code{\link[rlang:list2]{rlang::list2()}} and so are \emph{\link[rlang:dyn-dots]{dynamic}}. Input names
may not be duplicated.}
}
\if{html}{\out{</div>}}
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{\dontrun{
session$setInputs(x=1, y=2)
}
}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-.scheduleTask"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-.scheduleTask}{}}}
\subsection{Method \code{.scheduleTask()}}{
An internal method which shouldn't be used by others.
Schedules \code{callback} for execution after some number of \code{millis}
milliseconds.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$.scheduleTask(millis, callback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{millis}}{The number of milliseconds on which to schedule a callback}

\item{\code{callback}}{The function to schedule.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-elapse"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-elapse}{}}}
\subsection{Method \code{elapse()}}{
Simulate the passing of time by the given number of milliseconds.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$elapse(millis)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{millis}}{The number of milliseconds to advance time.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-.now"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-.now}{}}}
\subsection{Method \code{.now()}}{
An internal method which shouldn't be used by others.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$.now()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
Elapsed time in milliseconds.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-defineOutput"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-defineOutput}{}}}
\subsection{Method \code{defineOutput()}}{
An internal method which shouldn't be used by others.
Defines an output in a way that sets private$currentOutputName
appropriately.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$defineOutput(name, func, label)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{The name of the output.}

\item{\code{func}}{The render definition.}

\item{\code{label}}{Not used.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-getOutput"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-getOutput}{}}}
\subsection{Method \code{getOutput()}}{
An internal method which shouldn't be used by others. Forces
evaluation of any reactive dependencies of the output function.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$getOutput(name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{The name of the output.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The return value of the function responsible for rendering the
output.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-ns"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-ns}{}}}
\subsection{Method \code{ns()}}{
Returns the given id prefixed by this namespace's id.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$ns(id)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{id}}{The id to prefix with a namespace id.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The id with a namespace prefix.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-flushReact"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-flushReact}{}}}
\subsection{Method \code{flushReact()}}{
Trigger a reactive flush right now.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$flushReact()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-makeScope"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-makeScope}{}}}
\subsection{Method \code{makeScope()}}{
Create and return a namespace-specific session proxy.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$makeScope(namespace)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{namespace}}{Character vector indicating a namespace.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A new session proxy.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-setEnv"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-setEnv}{}}}
\subsection{Method \code{setEnv()}}{
Set the environment associated with a testServer() call, but
only if it has not previously been set. This ensures that only the
environment of the outermost module under test is the one retained. In
other words, the first assignment wins.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$setEnv(env)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{env}}{The environment to retain.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The provided \code{env}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-setReturned"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-setReturned}{}}}
\subsection{Method \code{setReturned()}}{
Set the value returned by the module call and proactively
flush. Note that this method may be called multiple times if modules
are nested. The last assignment, corresponding to an invocation of
setReturned() in the outermost module, wins.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$setReturned(value)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{value}}{The value returned from the module}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The provided \code{value}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-getReturned"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-getReturned}{}}}
\subsection{Method \code{getReturned()}}{
Get the value returned by the module call.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$getReturned()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The value returned by the module call
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-genId"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-genId}{}}}
\subsection{Method \code{genId()}}{
Generate a distinct character identifier for use as a proxy
namespace.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$genId()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A character identifier unique to the current session.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-rootScope"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-rootScope}{}}}
\subsection{Method \code{rootScope()}}{
Provides a way to access the root \code{MockShinySession} from
any descendant proxy.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$rootScope()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
The root \code{MockShinySession}.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-onUnhandledError"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-onUnhandledError}{}}}
\subsection{Method \code{onUnhandledError()}}{
Add an unhandled error callback.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$onUnhandledError(callback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{callback}}{The callback to add, which should accept an error object
as its first argument.}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
A deregistration function.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-unhandledError"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-unhandledError}{}}}
\subsection{Method \code{unhandledError()}}{
Called by observers when a reactive expression errors.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$unhandledError(e, close = TRUE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{e}}{An error object.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-freezeValue"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-freezeValue}{}}}
\subsection{Method \code{freezeValue()}}{
Freeze a value until the flush cycle completes.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$freezeValue(x, name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{A \code{ReactiveValues} object.}

\item{\code{name}}{The name of a reactive value within \code{x}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-onSessionEnded"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-onSessionEnded}{}}}
\subsection{Method \code{onSessionEnded()}}{
Registers the given callback to be invoked when the session
is closed (i.e. the connection to the client has been severed). The
return value is a function which unregisters the callback. If multiple
callbacks are registered, the order in which they are invoked is not
guaranteed.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$onSessionEnded(sessionEndedCallback)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{sessionEndedCallback}}{Function to call when the session ends.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-registerDownload"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-registerDownload}{}}}
\subsection{Method \code{registerDownload()}}{
Associated a downloadable file with the session.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$registerDownload(name, filename, contentType, content)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{name}}{The un-namespaced output name to associate with the
downloadable file.}

\item{\code{filename}}{A string or function designating the name of the file.}

\item{\code{contentType}}{A string of the content type of the file. Not used by
\code{MockShinySession}.}

\item{\code{content}}{A function that takes a single argument file that is a
file path (string) of a nonexistent temp file, and writes the content
to that file path. (Reactive values and functions may be used from this
function.)}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-getCurrentOutputInfo"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-getCurrentOutputInfo}{}}}
\subsection{Method \code{getCurrentOutputInfo()}}{
Get information about the output that is currently being
executed.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$getCurrentOutputInfo()}\if{html}{\out{</div>}}
}

\subsection{Returns}{
A list with with the \code{name} of the output. If no output is
currently being executed, this will return \code{NULL}.
output, or \code{NULL} if no output is currently executing.
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-MockShinySession-clone"></a>}}
\if{latex}{\out{\hypertarget{method-MockShinySession-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{MockShinySession$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
