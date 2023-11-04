/*
 * Copyright (c) 2014-2023 Bjoern Kimminich & the OWASP Juice Shop contributors.
 * SPDX-License-Identifier: MIT
 */
console.log("Starting...")
import { AddressModelInit } from './address'
import { BasketModelInit } from './basket'
import { BasketItemModelInit } from './basketitem'
import { CaptchaModelInit } from './captcha'
import { CardModelInit } from './card'
import { ChallengeModelInit } from './challenge'
import { ComplaintModelInit } from './complaint'
import { DeliveryModelInit } from './delivery'
import { FeedbackModelInit } from './feedback'
import { ImageCaptchaModelInit } from './imageCaptcha'
import { MemoryModelInit } from './memory'
import { PrivacyRequestModelInit } from './privacyRequests'
import { ProductModelInit } from './product'
import { QuantityModelInit } from './quantity'
import { RecycleModelInit } from './recycle'
import { relationsInit } from './relations'
import { SecurityAnswerModelInit } from './securityAnswer'
import { SecurityQuestionModelInit } from './securityQuestion'
import { UserModelInit } from './user'
import { WalletModelInit } from './wallet'

import { config } from 'dotenv'
config()

import { Sequelize } from 'sequelize'

console.log('DB_NAME:', process.env.DB_NAME || 'juiceshop_db') // Log the DB_NAME
console.log('DB_USER:', process.env.DB_USER || 'postgres') // Log the DB_USER
console.log('DB_PASS:', process.env.DB_PASS || 'password123!') // Log the DB_PASS
console.log('DB_HOST:', process.env.DB_HOST || 'localhost') // Log the DB_HOST

const sequelize = new Sequelize(process.env.DB_NAME || 'juiceshop_db', process.env.DB_USER || 'postgres', process.env.DB_PASS || 'password123!', {
  host: process.env.DB_HOST || 'localhost',
  dialect: 'postgres',
  logging: console.log,
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const connectWithRetry = async () => {
  return new Promise(resolve => {
    sequelize.authenticate()
      .then(() => {
        console.log('Database connection has been established successfully.');
        resolve(true);
      })
      .catch(err => {
        console.error('Unable to connect to the database:', err);
        console.log('Retrying in 5 seconds...');
        setTimeout(connectWithRetry, 5000);
      });
  });
};

(async () => {
  await connectWithRetry();

  console.log('Initializing AddressModel');
  AddressModelInit(sequelize)
  console.log('AddressModel initialized');

  console.log('Initializing BasketModel');
  BasketModelInit(sequelize)
  console.log('BasketModel initialized');

  console.log('Initializing BasketItemModel');
  BasketItemModelInit(sequelize)
  console.log('BasketItemModel initialized');

  console.log('Initializing CaptchaModel');
  CaptchaModelInit(sequelize)
  console.log('CaptchaModel initialized');

  console.log('Initializing CardModel');
  CardModelInit(sequelize)
  console.log('CardModel initialized');

  console.log('Initializing ChallengeModel');
  ChallengeModelInit(sequelize)
  console.log('ChallengeModel initialized');

  console.log('Initializing ComplaintModel');
  ComplaintModelInit(sequelize)
  console.log('ComplaintModel initialized');

  console.log('Initializing DeliveryModel');
  DeliveryModelInit(sequelize)
  console.log('DeliveryModel initialized');

  console.log('Initializing FeedbackModel');
  FeedbackModelInit(sequelize)
  console.log('FeedbackModel initialized');

  console.log('Initializing ImageCaptchaModel');
  ImageCaptchaModelInit(sequelize)
  console.log('ImageCaptchaModel initialized');

  console.log('Initializing MemoryModel');
  MemoryModelInit(sequelize)
  console.log('MemoryModel initialized');

  console.log('Initializing PrivacyRequestModel');
  PrivacyRequestModelInit(sequelize)
  console.log('PrivacyRequestModel initialized');

  console.log('Initializing ProductModel');
  ProductModelInit(sequelize)
  console.log('ProductModel initialized');

  console.log('Initializing QuantityModel');
  QuantityModelInit(sequelize)
  console.log('QuantityModel initialized');

  console.log('Initializing RecycleModel');
  RecycleModelInit(sequelize)
  console.log('RecycleModel initialized');

  console.log('Initializing SecurityAnswerModel');
  SecurityAnswerModelInit(sequelize)
  console.log('SecurityAnswerModel initialized');

  console.log('Initializing SecurityQuestionModel');
  SecurityQuestionModelInit(sequelize)
  console.log('SecurityQuestionModel initialized');

  console.log('Initializing UserModel');
  UserModelInit(sequelize)
  console.log('UserModel initialized');

  console.log('Initializing WalletModel');
  WalletModelInit(sequelize)
  console.log('WalletModel initialized');

  console.log('Initializing relations');
  relationsInit(sequelize)
  console.log('Relations initialized');
})();

export { sequelize }