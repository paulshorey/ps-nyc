

class Job extends React.Component {
    render() {
        return (
            <h1>TEST TEST</h1>
        );
    }
};


class List extends React.Component {
    constructor(){
        super();
        this.state = {
            jobs: [
                {name:"zero"}
            ]
        }
    }
    componentWillMount(){
        setTimeout(()=>{
            this.setState({
                jobs: [
                    {name:"one"},
                    {name:"two"},
                    {name:"three"}
                ]
            });
        },1000);
    }
    render() {

        var renderJobs = ()=>{
            this.state.jobs.forEach(function(job){
                <Job data={job} />
            });
        }
        
        return (
            {renderJobs()}
        );
    }
};


class Page extends React.Component {
    render() {
        return (
            <List />
        );
    }
};


ReactDOM.render(
    <Page />,
    document.getElementById('jobs')
);