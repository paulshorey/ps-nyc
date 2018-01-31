

class Job extends React.Component {
    markIntrigued(){
    }
    markMaybe(){
    }
    markApplied(){
    }
    markIgnored(){
    }
    render() {
        return (
            <div className="job">

                <div className="jobActions">
                    <span className="markIntrigued" onClick={this.markIntrigued}>!</span>
                    <span className="markMaybe" onClick={this.markMaybe}>?</span>
                    <span className="markApplied" onClick={this.markApplied}>+</span>
                    <span className="markIgnored" onClick={this.markIgnored}>-</span>
                </div>

                <div className="jobTitle"><a href={this.props.data.link} target="_blank">{this.props.data.name}</a></div>
                <div className="jobSubtitle">
                    <span className="jobLocation"><a href={"http://maps.google.com?q="+this.props.data.location} target="_blank">{this.props.data.location}</a></span> &nbsp; ~ &nbsp;  
                    <span className="jobCompany"><a href={"http://google.com?q="+this.props.data.company} target="_blank">{this.props.data.company}</a></span>
                </div>
                <div className="jobStars">{this.props.data.stars}</div>
                <div className="jobText">{this.props.data.text}</div>
            </div>
        );
    }
};


class List extends React.Component {
    constructor(){
        // state
        super();
        this.initialState = {
            jobs_new: [],
            jobs_applied: [],
            jobs_ignored: [],
            jobs_maybe: [],
            jobs_intrigued: []
        }
        this.state = Object.assign({},this.initialState);
        // get
        var thisScope = this;
        fetch(new Request('http://api.paulshorey.com/v1/jobs/all'))
        .then(function(response) { return response.json(); })
        .then(function(results) {
            // data
            var newState = Object.assign({},thisScope.initialState);
            // filter
            if (results.data) {
                for (var i = 0; i < results.data.length; i++) {
                    var res = results.data[i];
                    if (res._status==="applied") {
                        newState.jobs_applied.push(results.data[i]);
                    } else if (res._status==="ignored") {
                        newState.jobs_ignored.push(results.data[i]);
                    } else {
                        newState.jobs_new.push(results.data[i]);
                    }
                }
                // view
                // if (thisScope._mounted) {
                    thisScope.setState(newState);
                // }
            }
        });
    }
    componentWillMount(){
        this._mounted = true;
    }
    componentWillUnmount(){
        this._mounted = false;
    }
    renderJobs = (filter)=>{
        // data
        var data = this.state["jobs_"+(filter.status)];

        // view
        var ToRender = [];
        data.forEach(function(job, key){
            ToRender.push(<Job key={key} data={job} />);
        });
        return ToRender;
    }
    render() {
        return (
        <div className="wrapper">
            <div className="list">
                <div className="listTitle">
                    Intrigued
                    <span className="iconsRight">
                        <span className="icon-options-large"></span>
                    </span>
                </div>
                <div className="listContent">{this.renderJobs({status:"intrigued"})}</div>
            </div>
            <div className="list">
                <div className="listTitle">
                    Maybe
                    <span className="iconsRight">
                        <span className="icon-options-large"></span>
                    </span>
                </div>
                <div className="listContent">{this.renderJobs({status:"maybe"})}</div>
            </div>
            <div className="list">
                <div className="listTitle">
                    Applied
                    <span className="iconsRight">
                        <span className="icon-options-large"></span>
                    </span>
                </div>
                <div className="listContent">{this.renderJobs({status:"applied"})}</div>
            </div>
            <div className="list">
                <div className="listTitle">
                    Ignored
                    <span className="iconsRight">
                        <span className="icon-options-large"></span>
                    </span>
                </div>
                <div className="listContent">{this.renderJobs({status:"ignored"})}</div>
            </div>
            <div className="list">
                <div className="listTitle">
                    NEW
                    <span className="iconsRight">
                        <span className="icon-options-large"></span>
                    </span>
                </div>
                <div className="listContent">{this.renderJobs({status:"new"})}</div>
            </div>
        </div>
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