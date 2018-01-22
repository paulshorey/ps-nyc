import styled from 'styled-components';
import loading3 from './../assets/loading3.gif';

export const App = styled.div`

    font-family:sans-serif;

    form,button,input {
        margin:0;
        border:none;
    }
    form {
        padding: 0 0.5rem;
    }
    button, input {
        padding: 0.5rem 0.75rem;
        background:none;
        font-size:1rem;
    }
    button {
        color:#76BB39;
        font-weight:bold;
        cursor:pointer;
    }

    .ui {
        padding:1rem 0;
        width:calc(100%-3rem);;
        max-width:700px;
        display:flex;
        .avatar {
            /* min-width:10%; */
        }
        .board {
            display:flex;
            flex-direction:column;
            flex-grow:1;
            background-color:#fff;
            border-top-right-radius:2rem;
            border-bottom-left-radius:2rem;
            padding:0 0 0.25rem 0;
        }
        @media (min-width: 750px) {
        }
    }

    .messages {
        padding: 0.25rem 0.5rem 0 0.5rem;
        .message {
            margin:0 0.75rem 0;
            padding:0 0.05rem 0;
            text-align:right;
            &:first-child {
                padding-top: 0.25rem;
            }
            &:last-child {
                border-bottom: solid 1px #ccc;
                padding-bottom: 0.25rem;
                background-image:url(${loading3});
                background-repeat: no-repeat;
                background-position: -0.5rem center;
                &.fromPaul {
                    background:none;
                }
            }
            &.fromPaul {
                background:#fff;
                text-align:left;
                .text {
                    color:black;
                }
            }
            .text {
                color:#76BB39;
            }
            .user {
                color:#787878;
            }
        }
    }

    form {
        display:flex;
        input {
            flex-grow:1;
        }
    }

`;