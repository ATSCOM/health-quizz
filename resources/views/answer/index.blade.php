@extends('adminlte::page')

@section('template_title')
    Answer
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Answer') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('answers.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Create New') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>No</th>

										<th>Description</th>
										<th>Value</th>
										<th>Question</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($answers as $answer)
                                        <tr>
                                            <td>{{ ++$i }}</td>

											<td>{{ $answer->description }}</td>
											<td>{{ $answer->value > 0 ? 'Verdadero' : 'Falso' }}</td>
											<td>{{ $answer->question->descriptions }}</td>

                                            <td>
                                                <form action="{{ route('answers.destroy',$answer->id) }}" method="POST" class="form-delete">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('answers.show',$answer->id) }}"><i class="fa fa-fw fa-eye"></i> Show</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('answers.edit',$answer->id) }}"><i class="fa fa-fw fa-edit"></i> Edit</a>
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-fw fa-trash"></i> Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $answers->links() !!}
            </div>
        </div>
    </div>
@endsection

@section('js')

    <script src="{{ asset('js/sweetalert.js') }}"></script>

@endsection
