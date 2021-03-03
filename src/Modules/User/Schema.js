const { gql } = require("apollo-server-express")

const schema = gql `

	type User {
		id: Int!
		username: String!
		fullName: String!
		avatar: String
		gender: Int!
		joinedAt: DateTime!
		hiring: Boolean!
		#language: Language!
		#specialization: Specialization!
	}

	extend type Query {
		users(
			page: Int = 1,
			limit: Int = 20
		): [User!]!
	}
`

module.exports = schema
