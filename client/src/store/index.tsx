import { configureStore } from "@reduxjs/toolkit";
import languageReducer from "./slices/languageSlice";

const reducer = {
    language: languageReducer,
}
export const store = configureStore({
    reducer
})

export type RootState = ReturnType<typeof store.getState>
export type AppDispatch = typeof store.dispatch;

export default store;