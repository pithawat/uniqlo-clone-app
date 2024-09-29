import { createSlice, PayloadAction } from "@reduxjs/toolkit";
import { RootState } from "..";

type LanguageState = {
    language: string;
}

const initialState: LanguageState = {
    language: "th",
}

export const languageSlice = createSlice({
    name: "language",
    initialState: initialState,
    reducers: {
        setLanguage: (state: LanguageState, actions: PayloadAction<string>) => {
            state.language = actions.payload
        },
    },
})
export const { setLanguage } = languageSlice.actions;
export const selectLanguage = (state: RootState) => state.language;
export default languageSlice.reducer;