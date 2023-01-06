import { configureStore } from '@reduxjs/toolkit';
import dogsReducer from '../features/dogs/dogsSlice';
import usersReducer from '../features/users/usersSlice';

export const store = configureStore({
    reducer: {
        users: usersReducer,
        dogs: dogsReducer
    },
});