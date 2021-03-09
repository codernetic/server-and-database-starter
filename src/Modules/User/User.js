// Model

const { fetch, fetchOne } = require("../../Library/Database/Postgres")

const MANY = `

	SELECT
		user_id,
		user_username,
		user_fullname,
		user_avatar,
		user_gender,
		user_joined_at,
		user_hiring,
		language_id,
		specialization_id
	FROM
		users

	OFFSET $1
	FETCH NEXT $2 ROWS ONLY
`

const CREATE = `

	INSERT INTO users (

		user_username,
		user_password,
		user_first_name,
		user_last_name

	) VALUES (
		$1, $2, $3, $4
	) RETURNING *
`


const many = async ({ page, limit }) => await fetch(MANY, (page - 1) * limit, limit)

const create = async ({ username }) => await fetchOne(CREATE, username, "pass1", "fName", "lName")

module.exports.many = many
module.exports.create = create
