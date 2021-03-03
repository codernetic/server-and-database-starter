const User = require("./User")

const resolvers = {

	User: {
		id: user => user.user_id,
		username: user => user.user_username,
		fullName: user => user.user_fullname,
		avatar: user => user.user_avatar,
		gender: user => user.user_gender,
		joinedAt: user => user.user_joined_at,
		hiring: user => user.user_hiring,
	},
	
	Query: {
		users: (_, args) => User.many(args),
	},

	// Mutation: {
	// 	createUser: async (_, args) => {

	// 		try {
	// 			const newUser = await User.create(args)

	// 			return { ...newUser, __typename: "User", }
	// 		}
	// 		catch(error) {
	// 			return {
	// 				__typename: "Error",
	// 				code: error.code || 0,
	// 			}
	// 		}
	// 	}
	// },
}

module.exports = resolvers
