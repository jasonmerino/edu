window.App = Ember.Application.create()

App.Router.map ->
	this.resource "colors"
	return this

# Model
App.ColorsRoute = Ember.Route.extend
	model: ->
		[{
			text: "Blue"
			code: "blue"
		}, {
			text: "Red"
			code: "red"
		}, {
			text: "Green"
			code: "green"
		}, {
			text: "Pink"
			code: "pink"
		}, {
			text: "Yellow"
			code: "yellow"
		}, {
			text: "Purple"
			code: "rebeccapurple"
		}]


App.IndexRoute = Ember.Route.extend
	redirect: ->
		this.transitionTo "colors"
