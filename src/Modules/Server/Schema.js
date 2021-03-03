const { gql } = require("apollo-server-express")

const schema = gql `

	scalar DateTime

	type Error {
		code: Int!
	}

	union MutationResponse = User | Error
`

module.exports = schema
