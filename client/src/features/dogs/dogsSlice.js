import { createSlice } from '@reduxjs/toolkit';

const initialState = [];

const dogsSlice = createSlice({
    name: "dogs",
    initialState,
    reducers: {}
});

export default dogsSlice.reducer;