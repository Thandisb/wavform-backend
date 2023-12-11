const db = require("../db/dbConfig");
const jwt = require("jsonwebtoken");

const getAllUsers = async () => {
    try {
        const allUsers = await db.any("SELECT * FROM users");
        return allUsers;
    } catch (error) {
        return error;
    }
};

const createUser = async (data) => {
    try {
        const { username, password, email } = data;

        const newUser = await db.one(
            "INSERT INTO users( username, password, email) VALUES($1, $2, $3) RETURNING *",
            [username, password, email]
        );
        return newUser;
    } catch (error) {
        return error;
    }
};

const login = async (data) => {
    try {
        const { email, password } = data;

        const foundUser = await db.any(
            "SELECT * FROM users WHERE email = $1",
            email
        );
        if (foundUser.length === 0) {
            throw {
                message: "error",
                error: "User does not exists please go sign up",
            };
        } else {
            let user = foundUser[0];

            if (password !== user.password) {
                throw {
                    message: "error",
                    error: "Please check you email and password",
                    status: 500,
                };
            } else {
                let jwtToken = jwt.sign(
                    {
                        id: user.id,
                        email: user.email,
                        username: user.username,
                    },

                    process.env.JWT_TOKEN_SECRET_KEY,
                    { expiresIn: "7d" }
                );
                //console.log("Generated Token:", jwtToken);

                return jwtToken;
            }
        }
    } catch (error) {
        return error;
    }
};

module.exports = {
    getAllUsers,
    createUser,
    login,
};
