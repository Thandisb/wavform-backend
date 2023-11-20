const db = require("../db/dbConfig");

const getAllSequences = async () => {
  try {
    const getSequences = await db.any(`SELECT * FROM sequences`);

    return getSequences;
  } catch (error) {
    return { status: "failed", err: error}
  }
};

const getSequenceById = async () => {
    try {
        const foundSequence = await db.any(`SELECT * FROM sequences WHERE id = $1`, id);

        return foundSequence;
    } catch (error) {
        return { status: "failed", err: error}
    }
}

const createSequence = async (data) => {
    try {
        const newSequence = await db.one(
            "INSERT INTO sequences (name, sequence)",
            [
                data.name,
                data.sequence
            ]
        );

        return { status: "successful", data: newSequence }
    } catch (error) {
        return { status: "failed", err: error}
    }
};

const deleteSequenceById = async (id) => {
    try {
        const deletedSequence = await db.any(
            "DELETE FROM sequences WHERE id = $1 RETURNING *",
            [id]
        );

        return { status: "successful", data: deletedSequence }
    } catch (error) {
        return { status: "failed", err: error}
    }
}

const updateSequenceById = async (id, data) => {
    try {
        const originalSequence = await db.any("SELECT * FROM sequences WHERE id = $1", [id]);

        let combinedSequence = {
            ...originalSequence[0],
            ...data
        };

        const updatedSequence = await db.one(
            "UPDATE sequences SET name = $1, sequence = $2", [
                combinedSequence.name,
                combinedSequence.sequence,
                id
            ]
        );

        return { status: "successful", data: updatedSequence }
    } catch (error) {
        return { status: "failed", err: error}
    }
}

module.exports = { getAllSequences, getSequenceById, createSequence, deleteSequenceById, updateSequenceById }