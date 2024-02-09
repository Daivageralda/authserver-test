const { DataTypes } = require('sequelize');
const sequelize = require('../config/connect');

const User = sequelize.define('User', {
  userid: {
    type: DataTypes.CHAR(20),
    primaryKey: true,
    allowNull: false,
  },
  password: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  nama: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING(100),
    allowNull: false,
  },
  semester: {
    type: DataTypes.STRING(20),
    allowNull: false,
  },
}, {
  tableName: 'users',
  timestamps: false,
});


module.exports = User
