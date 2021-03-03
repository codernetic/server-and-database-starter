/*
	
	Maqsad

	Ilhom		->	JavaScript
	Farruh		->	Go
	Rasul		->	JavaScript, Python
	Akbarjon 	->	Haskell

	Shuhrat 	->	Beginner

	MuhammadBobur	-> Blog

*/

/*
	ROUTE
		Frontend
		Backend
		AI
		System Design
		DBMS

	LANGUAGE
		Go
		Rust
		JavaScript
		Python
		Java
		PHP

	STACK
		PATH = Backend		1
		name = Postgres

		PATH = Frontend		2
		name = React

		PATH = Backend		3
		name = Django

	STACK_SCHEMAS

		1 => JavaScript
		2 => JavaScript, TypeScript
		3 => Python

	PROFESSIONS
		name = [
			Data Engineer,
			Software Engineer,
			Web Developer,
		]

	USER
		id
		username
		password
		fullname
		main_language(single) = Go
		stack(multilple) = [PostgreSQL, GrpahQl, Express, React]
		profession(single) = Data engineer
		--interests(multilple) = [Js, Go]
	TAG

	QUESTION
		title = Which is the best?
		tag = javascript, typescript

	BLOG
		title
		content

	Cocoa Touch iOS Engineering Swift
	
	API DESIGN

	languages()			=> string[]
	routes()			=> string[]
	stacks(routeId)		=> Stack[]
	specializations()	=> string[]

	[
		"Js", "Go"
	]

	[
		{
			route: Route {
				name: "Database Management Systems"
			},
			name: "PostgreSQL",
			language: Language {
				name: "SQL"
			},
		},
		{
			route: "Frontend",
			name: "React",
			language: "JavaScript",
		}
	]
*/

scalar DateTime

type User {
	id: Int!
	username: String!
	fullName: String!
	avatar: String
	gender: Int!
	jointedAt: DateTime!
	hiring: Boolean!
	language: Language!
	specialization: Specialization!
}

type Query {
	users: [User!]!
	followers(userId: Int!): [User!]!
	following(userId: Int!): [User!]!
}

type Route {
	id: Int!
	name: String!
}

type Language {
	id: Int!
	name: String!
}

type Stack {
	id: Int!
	name: String!
	route: Route!
	language: Language!
}


{
	stacks {
		id
		name
		route { id, name }
		language { id, name }
	}
}
